.class Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$9;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;

.field final synthetic val$sendto:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$9;->this$0:Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;

    iput-object p2, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$9;->val$sendto:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$9;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    new-instance v0, Lcom/alipay/mobileinno/common/service/facade/sns/model/MessageRPCRequest;

    invoke-direct {v0}, Lcom/alipay/mobileinno/common/service/facade/sns/model/MessageRPCRequest;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$9;->this$0:Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;

    #getter for: Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->a:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;
    invoke-static {v1}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->access$000(Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;)Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->getUserId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileinno/common/service/facade/sns/model/MessageRPCRequest;->userId:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$9;->val$sendto:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobileinno/common/service/facade/sns/model/MessageRPCRequest;->mobileNo:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$9;->this$0:Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;

    #getter for: Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->f:Lcom/alipay/mobile/common/share/ShareContent;
    invoke-static {v1}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->access$200(Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;)Lcom/alipay/mobile/common/share/ShareContent;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$9;->this$0:Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;

    #getter for: Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->f:Lcom/alipay/mobile/common/share/ShareContent;
    invoke-static {v1}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->access$200(Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;)Lcom/alipay/mobile/common/share/ShareContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/share/ShareContent;->getExtData()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileinno/common/service/facade/sns/model/MessageRPCRequest;->extInfo:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$9;->this$0:Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;

    #getter for: Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->a:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;
    invoke-static {v1}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->access$000(Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;)Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->getSNSService()Lcom/alipay/mobileinno/common/service/facade/sns/SNSApiService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/mobileinno/common/service/facade/sns/SNSApiService;->createSNSByMessage(Lcom/alipay/mobileinno/common/service/facade/sns/model/MessageRPCRequest;)Lcom/alipay/mobileinno/common/service/facade/sns/model/SNSOperationResult;

    const/4 v0, 0x0

    return-object v0
.end method
