angular.module('ajenti.vh').controller 'VhIndexController', ($scope, notify, pageTitle, tasks, messagebox, gettext) ->
    pageTitle.set('Websites')
    $scope.newWebsiteDialogVisible = false

    $scope.websites = [{name: 'nampnq.cf'}, {name: 'nampnq.io'}]

    $scope.showNewWebsiteDialog = () ->
        $scope.newWebsiteName = ''
        $scope.newWebsiteDialogVisible = true

    $scope.doCreateWebsite = () ->
        if not $scope.newWebsiteName
            return

    $scope.doDelete = () ->
        messagebox.show(
            text: gettext('Delete selected items?'),
            positive: gettext('Delete'),
            negative: gettext('Cancel')
        ).then () ->
            items = (item for item in $scope.websites when item.selected)
            tasks.start('aj.plugins.vh.tasks.Delete', [], items: items)
            $scope.clearSelection()

    $scope.clearSelection = () ->
        for item in $scope.websites
            item.selected = false