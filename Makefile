INVENTORY?=hosts

ping:
	ansible all -i $(INVENTORY) -m ping

deps:
	pip install --upgrade ansible ansible-lint

test:
	ansible-playbook -vvvv -i $(INVENTORY) -s infinality.yml

clean:
	rm *.retry
