#!/bin/bash
#
# This script will dump some of the tables from the database.

python manage.py dumpdata --indent=4 boxes.box > fixtures/boxes_box.json
python manage.py sitetreedump --indent=4 > fixtures/sitetree.json
python manage.py dumpdata --indent=4 conference.conference conference.section > fixtures/conference.json
python manage.py dumpdata --indent=4 sites.site > fixtures/initial_data.json
python manage.py dumpdata --indent=4 proposals.proposalkind proposals.proposalsection > fixtures/proposal_base.json
python manage.py dumpdata --indent=4 sponsorship.benefit sponsorship.benefitlevel > fixtures/sponsor_benefits.json
python manage.py dumpdata --indent=4 sponsorship.sponsorlevel > fixtures/sponsor_levels.json
python manage.py dumpdata --indent=4 sponsorship.sponsor > fixtures/sponsor.json
