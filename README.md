This repository serves kubernetes resources to deploy [javadocky](https://github.com/KengoTODA/javadocky) app onto the Google Kubernetes Engine (GKE).

- [ ] Introduce [LoadBalancer service](https://kubernetes.io/docs/concepts/services-networking/service/#loadbalancer)
- [ ] Use domain to access the load balancer
- [ ] Enable HTTPS
- [ ] [Pull pipeline](https://www.weave.works/technologies/gitops/#pull-vs-push-pipeline)
- [ ] Try [KEDA or Knative](https://stackoverflow.com/a/61602169/814928) for scale-to-zero
- [ ] Launch staging env only while a PR is open

### References

* [Exposing an External IP Address to Access an Application in a Cluster](https://kubernetes.io/docs/tutorials/stateless-application/expose-external-ip-address/)
