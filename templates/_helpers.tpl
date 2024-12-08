{{- define "test-chart.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}


{{- define "test-chart.labels" -}}
chart: {{ include "test-chart.chart" . }}
{{ include "test-chart.selectorLabels" . }}
{{- if .Chart.AppVersion }}
version: {{ .Chart.AppVersion | quote }}
{{- end }}
{{- end }}


{{- define "test-chart.selectorLabels" -}}
app: test-app
{{- end }}
