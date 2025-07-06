{{- define "alertmanager.fullname" -}}
{{- printf "%s-%s" .Release.Name "alertmanager" | trunc 63 | trimSuffix "-" -}}
{{- end -}}
