{% for item in fw_policy_info %}
    {% for i in fw_policy_info.src_ips %}
set security policies from-zone {{ item.src_zone }} to-zone {{ item.dst_zone }} policy {{ item.policy_name }} match source-address {{ i }}
    {% endfor %}
    {% for i in fw_policy_info.dst_ips %}
set security policies from-zone {{ item.src_zone }} to-zone {{ item.dst_zone }} policy {{ item.policy_name }} match destination-address {{ i }}
    {% endfor %}
    {% for i in fw_policy_info.apps %}
set security policies from-zone {{ item.src_zone }} to-zone {{ item.dst_zone }} policy {{ item.policy_name }} match application {{ i }}
    {% endfor %}
set security policies from-zone {{ item.src_zone }} to-zone {{ item.dst_zone }} policy {{ item.policy_name }} then {{ item.action }}
{% endfor %}
