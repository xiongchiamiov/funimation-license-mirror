# -*- coding: utf-8 -*-
from jinja2 import Environment, FileSystemLoader
from pyquery import PyQuery

env = Environment(loader=FileSystemLoader('.'))

doc = PyQuery(url='http://funimation.com/f_index.cfm?page=copy', parser='html')
entries = [PyQuery(entry).html() for entry in doc('td p')[2:-1]]

# we have to do some funky str-replacing because Funi embeds unicode characters
# in their iso-8859-encoded html files :3
print(env.get_template('funi.html').render(entries=entries).encode('utf-8').replace('Â', ''))
