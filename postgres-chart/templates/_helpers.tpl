{{/* Generate basic labels */}}
{{- define "postgres.labels" -}}
app: {{ .Release.Name }}-postgres
chart: {{ .Chart.Name }}-{{ .Chart.Version }}
release: {{ .Release.Name }}
heritage: {{ .Release.Service }}
{{- end -}}

{{/* Generate name */}}
{{- define "postgres.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/* Generate fullname */}}
{{- define "postgres.fullname" -}}
{{- printf "%s-%s" .Release.Name "postgres" | trunc 63 | trimSuffix "-" -}}
{{- end -}}
