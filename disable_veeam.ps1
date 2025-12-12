# Define the job name
$jobName = "{{ Tier* }}"
# Get the job object
$job = Get-VBRJob -Name $jobName

  if ($job) {
    # Disable the job
    Disable-VBRJob -Job $job -Confirm:$false
    Write-Host "Veeam job '$jobName' has been disabled."
      } else {
    Write-Host "Veeam job '$jobName' not found."
    }
