{{- define "test.labels" -}}
app: nginx-{{ randNumeric 4}}
{{- end}}