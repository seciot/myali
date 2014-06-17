.class Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$5;->this$0:Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$5;->this$0:Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;

    #getter for: Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->a:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;
    invoke-static {v0}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->access$000(Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;)Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->getContactsUploader()Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobileprod/biz/contact/contactuploader/ContactsUploader;->permitContactsUpload()V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$5;->this$0:Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;

    #getter for: Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->a:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;
    invoke-static {v0}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->access$000(Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;)Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->tryToUploadMobileContacts()V

    return-void
.end method
