.class Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$2;->this$0:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$2;->this$0:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->loadMatchInfoFromCache()V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$2;->this$0:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;

    #getter for: Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->g:Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;
    invoke-static {v0}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->access$100(Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;)Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploaderStrategy;

    invoke-direct {v0}, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploaderStrategy;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploaderStrategy;->setAppend(Z)V

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploaderStrategy;->setUploadAllTimeInterval(I)V

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$2;->this$0:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;

    #getter for: Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->g:Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;
    invoke-static {v1}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->access$100(Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;)Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$2;->this$0:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;->uploadContactsWithStrategy(Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploaderStrategy;Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploaderCallBack;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$2;->this$0:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;

    #getter for: Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->h:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$MatchMobileRequest;
    invoke-static {v0}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->access$200(Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;)Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$MatchMobileRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$2;->this$0:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;

    #getter for: Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->h:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$MatchMobileRequest;
    invoke-static {v0}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->access$200(Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;)Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$MatchMobileRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$MatchMobileRequest;->resetShowedError()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
