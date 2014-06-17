.class Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader$2;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploaderCallBack;

.field final synthetic b:Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;


# direct methods
.method constructor <init>(Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploaderCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader$2;->b:Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;

    iput-object p2, p0, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader$2;->a:Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploaderCallBack;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader$2;->b:Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;

    iget-object v1, p0, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader$2;->a:Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploaderCallBack;

    invoke-static {v0, v1}, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;->a(Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploaderCallBack;)V

    return-void
.end method
