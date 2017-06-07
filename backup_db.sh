start=`date +%s`
echo "## Starting backup process for `date +%Y-%m-%d`"

echo
echo "## Bringing down the service"
sudo ./go_down.sh
pm2 stop 0

echo
echo "## Copying db"
mkdir -p ~/.hypercloud-db-backups/
cp -R ~/.hypercloud/db ~/.hypercloud-db-backups/`date +%Y-%m-%d`

echo
echo "## Bring service back online"
pm2 start 0
sudo ./go_up.sh

runtime=$((`date +%s`-start))
echo
echo "## Backup completed in $runtime seconds"
