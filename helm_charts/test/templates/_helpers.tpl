{{- define "test.labels" -}}
app: nginx-{{ randNumeric 4}}
{{- end}}

{{- define "test.container" -}}
{{- with .Values.mycontainer -}}
name: {{ .name }}
image: {{ .image  }}
ports:
     containerPort:
     {{- range .containerPort }}
     - {{ . }}
     {{- end }}
{{- end -}}     
{{- end}}