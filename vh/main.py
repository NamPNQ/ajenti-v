from jadi import component

from aj.plugins.core.api.sidebar import SidebarItemProvider


@component(SidebarItemProvider)
class ItemProvider(SidebarItemProvider):
    '''
    To add a sidebar item, we create a component implementing SidebarItemProvider
    '''
    def __init__(self, context):
        pass

    def provide(self):
        return [
            {
                # attach the item to the 'general' category
                'attach': None,
                'id': 'category:web',
                'name': _('Web'),
                'children': [
                    {
                        'attach': 'category:web',
                        'name': 'Websites',
                        'icon': 'globe',
                        'url': '/view/websites',
                    }
                ]
            }
        ]
