from django import template
from studenttesting.models import Menu
register = template.Library()


@register.inclusion_tag('studenttesting/menu.html', takes_context=True)
def show_top_menu(context, request):
    for item in context:
        if 'request' in item:
            if '/student/' in  str(item['request']):
                print(str(item['request']))
                print(str(item['request']).split('/'))
                student_menu = list()
                for elem in Menu.objects.filter(role=1):
                    student_menu.append(elem)

                for elem in Menu.objects.filter(role=2):
                    student_menu.append(elem)

                return {
                    "menu_items": student_menu,
                }
        if 'request' in item:
            if '/teacher/' in  str(item['request']):
                teacher_menu = list()
                for elem in Menu.objects.filter(role=1):
                    teacher_menu.append(elem)
                for elem in Menu.objects.filter(role=3):
                    teacher_menu.append(elem)
                return {
                    "menu_items": teacher_menu,
                }

    menu_items = Menu.objects.filter(role=1)
    return {
        "menu_items": menu_items,
    }