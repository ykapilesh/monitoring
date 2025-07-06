{{- /*
Return the fully qualified app name.
*/ -}}
{{- define "grafana.fullname" -}}
{{- printf "%s-%s" .Release.Name "grafana" | trunc 63 | trimSuffix "-" -}}
{{- end -}}
