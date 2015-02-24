PROJECT=$1
APP=$2

cp -r template/* .

rm -rf "$PROJECT"

mv project "$PROJECT"
mv "$PROJECT/app" "$PROJECT/$APP"
mv "$PROJECT/project" "$PROJECT/$PROJECT"

find "$PROJECT" -type f -print0 | xargs -0 sed -i '' "s/__djname__/$PROJECT/g"
find "$PROJECT" -type f -print0 | xargs -0 sed -i '' "s/__djapp__/$APP/g"

sed -i '' "s/__djname__/$PROJECT/g" fabfile.py

cat <<EOF > "$PROJECT/$PROJECT/local_settings.py"

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql_psycopg2',
        'NAME': 'django',
        'USER': 'django',
        'PASSWORD': 'django',
        'HOST': 'localhost'
    }
}

SOCIAL_AUTH_GOOGLE_OAUTH2_KEY = 'get it from google'
SOCIAL_AUTH_GOOGLE_OAUTH2_SECRET = 'get it from google'

EOF
