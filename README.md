# circleci-ansible

Light Docker image used to deploy project using ansible on CircleCI

Usage in circle CI configuration file:

```yaml
version: 2.1
jobs:
    build:
        deploy:
            docker:
                - image: jeckel/circleci-ansible
            steps:
                - add_ssh_keys:
                    fingerprints:
                        # See CircleCi documentation about how to use ssh keys
                        - "my:fi:ng:er:pr:in:t0"
            - checkout
            - run:
                name: Deploy project
                command: |
                    ansible-playbook -i inventories/hosts.yml \
                        playbook-deploy.yml
workflows:
    version: 2
    build:
        jobs:
            - deploy:
                filters:
                    branches:
                        only: master
```