{{ define "volumes" }}
      volumes:
        - name: dev
          hostPath:
              path: /dev
        - name: hosts
          hostPath:
              path: /etc/hosts
        - name: resolv
          hostPath:
              path: /etc/resolv.conf
        - name: certs
          hostPath:
              path: /etc/ssl/certs/ca-certificates.crt
        - name: run
          hostPath:
              path: /run
        - name: cache
          hostPath:
              path: /var/lib/rancher/cache
        - name: conditions
          hostPath:
              path: /var/lib/rancher/conditions
        - name: conf
          hostPath:
              path: /var/lib/rancher/conf
        - name: rancher
          hostPath:
              path: /var/lib/rancher
        - name: log
          hostPath:
              path: /var/log
        - name: varrun
          hostPath:
              path: /var/run
{{ end }}

{{ define "volumeMounts" }}
          volumeMounts:
            - name: dev
              mountPath: /host/dev
            - name: hosts
              mountPath: /etc/hosts
            - name: resolv
              mountPath: /etc/resolv.conf
            - name: certs
              mountPath: /etc/ssl/certs/ca-certificates.crt.rancher
            - name: run
              mountPath: /run
            - name: cache
              mountPath: /var/lib/rancher/cache
            - name: conditions
              mountPath: /var/lib/rancher/conditions
            - name: conf
              mountPath: /var/lib/rancher/conf
            - name: rancher
              mountPath: /var/lib/rancher
            - name: log
              mountPath: /var/log
            - name: varrun
              mountPath: /var/run
{{ end }}
