{% for i in fw_policy_info %}
set security policies from-zone {{ i.src_zone }} to-zone {{ i.dst_zone }} policy {{ i.policy_name }} match source-address {{ i.src_ip }}
set security policies from-zone {{ i.src_zone }} to-zone {{ i.dst_zone }} policy {{ i.policy_name }} match destination-address {{ i.dst_ip }}
set security policies from-zone {{ i.src_zone }} to-zone {{ i.dst_zone }} policy {{ i.policy_name }} match application {{ i.app }}
set security policies from-zone {{ i.src_zone }} to-zone {{ i.dst_zone }} policy {{ i.policy_name }} then {{ i.action }}
{% endfor %}
