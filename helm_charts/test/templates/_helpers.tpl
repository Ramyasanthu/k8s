{{- define "test.labels" -}}
app: nginx-{{ randNumeric 4}}
{{- end}}

{{- define "test.container" -}}
{{- with .Values.mycontainer1 -}}
name: {{ .name | indent 4 }}
image: {{ .image | indent 4 }}
ports:
     containerPort:
     {{- range .containerPort }}
     - {{ . }}
     {{- end }}
{{- end -}}     
{{- end}}