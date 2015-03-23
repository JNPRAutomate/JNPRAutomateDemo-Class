{% for i in address_entries %}
set security address-book global address {{ i.name }} {{ i.prefix }}
{% endfor %}
