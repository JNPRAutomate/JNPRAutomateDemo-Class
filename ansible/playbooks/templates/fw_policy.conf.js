security {
    policies {
        {% for i in fw_policy_info %}
        from-zone {{ i.src_zone }} to-zone {{ i.dst_zone }} {
            policy {{ i.policy_name }} {
                match {
                    source-address {{ i.src_ip }};
                    destination-address {{ i.src_ip }};
                    application {{ i.app }};
                }
                then {
                    {{ item.action }};
                }
        }
        {% endfor %}
    }
}
