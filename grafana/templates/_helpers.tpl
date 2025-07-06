{{- define "grafana.fullname" -}}
{{- printf "%s-%s" .Release.Name "grafana" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "grafana.serviceAccountName" -}}
{{- printf "%s-%s" .Release.Name "grafana-sa" | trunc 63 | trimSuffix "-" -}}
{{- end -}}
