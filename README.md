ansible-playbook --limit teamcityagents win_dir_copy_shortcut_teamcityagents.yml

ansible-playbook --limit CIComputers win_dir_copy_shortcut_CIComputers.yml

ansible-playbook --limit CIComputers win_ping.yml

sudo vi /etc/ansible/hosts
[teamcityagents]
usan-agent-05.dev.local ansible_host=10.131.17.229
usan-agent-01.dev.local ansible_host=10.131.17.141
usan-agent-03.dev.local ansible_host=10.131.17.227
usan-agent-02.dev.local ansible_host=10.131.17.142
usan-agent-04.dev.local ansible_host=10.131.17.228
usan-agent-06.dev.local
usan-agent-07.dev.local
usan-abuild-01.dev.local
lasc-vltsub-d1.dev.local

[CIComputers]
CIComputer01.ali.local
CIComputer02.ali.local
CIComputer03.ali.local
CIComputer04.ali.local
CIComputer05.ali.local
CIComputer06.ali.local
CIComputer07.ali.local
CIComputer08.ali.local
CIComputer09.ali.local
CIComputer10.ali.local
CIComputer11.ali.local
CIComputer12.ali.local
housekeeping.ali.local
CIComputer14.ali.local
CIComputer15.ali.local
CIComputer16.ali.local
CIComputer17.ali.local
CIComputer18.ali.local

[all:vars]
ansible_user=ansible
ansible_password=ati1@Monaco
ansible_connection=winrm
ansible_winrm_server_cert_validation=ignore







