user_coco_curry:
  user.present:
    - name: lawson
    - fullname: Lawson
    - shell: /bin/bash
    - home: /home/lawson
    - uid: 10001
    - gid_from_name: True
    - groups:
      - wheel

coco_curry_key:
  ssh_auth.present:
    - name: lawson
    - user: lawson
    - source: salt://users/keys/lawson.pub
