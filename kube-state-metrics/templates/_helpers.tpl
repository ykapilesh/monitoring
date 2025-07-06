{{/* Full name */}}
{{- define "kube-state-metrics.fullname" -}}
{{ .Release.Name }}
{{- end }}

{{/* Common labels */}}
{{- define "kube-state-metrics.labels" -}}
app.kubernetes.io/name: kube-state-metrics
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/* Service account */}}
{{- define "kube-state-metrics.serviceAccountName" -}}
{{ if .Values.serviceAccount.create }}{{ .Release.Name }}{{ else }}{{ .Values.serviceAccount.name }}{{ end }}
{{- end }}
