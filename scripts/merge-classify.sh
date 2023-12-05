input_dir="output"
output_dir="finaloutput"
find "$input_dir" -type f -exec cat {} + > out/all.txt
regexes=("AWS Access Key" "AWS Secret Key" "AWS MWS Key" "Amazon SNS topic" "Facebook Secret Key" "Facebook Client ID" "Cloudinary Basic Auth" "Firebase Database" "Twitter Secret Key" "Twitter Client ID" "Github Personal Access Token" "Github OAuth Access Token" "Github App Token" "Github Refresh Token" "LinkedIn Client ID" "LinkedIn Secret Key" "Slack" "Asymmetric Private Key" "Google API key" "Google (GCP) Service Account" "Heroku API key" "MailChimp API key" "Mailgun API key" "PayPal Braintree access token" "Picatic API key" "SendGrid API Key" "Slack Webhook" "Stripe API key" "Square access token" "Square OAuth secret" "Twilio API key" "Dynatrace token" "Shopify shared secret" "Shopify access token" "Shopify custom app access token" "Shopify private app access token" "PyPI upload token" "Bugsnag API Key" "AWS cognito pool" "S3 Bucket" "Discord Webhook" "Google Calendar URI" "Google OAuth Access Key" "Mapbox Token Disclosure" "Microsoft Teams Webhook" "Email address" "HTML comment" "Internal IP address" "IPv4 address" "BTC address")

mkdir -p "$output_dir"

for regex_name in "${regexes[@]}"; do
  output_file="${output_dir}/${regex_name// /_}.txt"
  echo "Searching for $regex_name"
  grep_output=$(find "$input_dir" -type f -exec cat {} + | egrep -i "$regex_name")
  
  if [[ -n "$grep_output" ]]; then
    echo "$grep_output" > "$output_file"
  fi
done
