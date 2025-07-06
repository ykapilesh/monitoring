{{/* Generate full name */}}
{{- define "prometheus-node-exporter.fullname" -}}
{{ .Release.Name }}
{{- end }}

{{/* Common labels */}}
{{- define "prometheus-node-exporter.labels" -}}
app.kubernetes.io/name: {{ include "prometheus-node-exporter.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/* Chart name */}}
{{- define "prometheus-node-exporter.name" -}}
prometheus-node-exporter
{{- end }}

{{/* Service account */}}
{{- define "prometheus-node-exporter.serviceAccountName" -}}
{{ if .Values.serviceAccount.create }}{{ .Release.Name }}{{ else }}{{ .Values.serviceAccount.name }}{{ end }}
{{- end }}
