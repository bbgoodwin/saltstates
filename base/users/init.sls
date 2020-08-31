user_coco_curry:
  user.present:
    - name: coco.curry
    - fullname: Coco Curry
    - shell: /bin/bash
    - home: /home/coco.curry
    - uid: 10000
    - gid_from_name: True
    - groups:
      - wheel

coco_curry_key:
  ssh_auth.present:
    - name: coco.curry
    - user: coco.curry
    - source: salt://users/keys/coco.curry.pub

{% for user, data in pillar.get('admin_user', {}).items()%}
