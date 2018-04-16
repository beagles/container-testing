FROM registry.access.redhat.com/rhosp12/openstack-neutron-l3-agent
LABEL description "Test building extended container images"
name "rhosp12/openstack-neutron-l3-agent-test"
USER root
RUN yum clean all
RUN yum-config-manager --enable rhel-7-server-openstack-12-rpms
RUN yum install docker -y
USER neutron
