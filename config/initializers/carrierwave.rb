CarrierWave.configure do |config|
    config.storage :ftp

    #FTPホスト名を指定する
    config.ftp_host = "ftp.lolipop.jp"
    config.ftp_port = 21

    #FTPアカウントユーザー名を指定する
    config.ftp_user = "oops.jp-iidesune"
    config.ftp_passwd = "korokoro4624"

    #FTPホストにおける画像格納先を指定する
    config.ftp_folder = "/"

    #上記、画像格納先を示すURLを指定する
    config.ftp_url = "http://iidesune.net"

    config.ftp_passive = true

end