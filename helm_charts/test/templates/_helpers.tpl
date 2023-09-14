{{- define "test.labels" -}}
app: nginx-{{ randNumeric 4}}
{{- end}}

{{- define "test.container" -}}
image: nginx
imagePullPolicy: Always
{{- end}}