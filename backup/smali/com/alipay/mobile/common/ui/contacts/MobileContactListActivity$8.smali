.class Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$8;
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

.field final synthetic val$mobileNo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$8;->this$0:Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;

    iput-object p2, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$8;->val$mobileNo:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$8;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    new-instance v0, Lcom/alipay/mobileinno/common/service/facade/sns/model/MessageRPCRequest;

    invoke-direct {v0}, Lcom/alipay/mobileinno/common/service/facade/sns/model/MessageRPCRequest;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$8;->this$0:Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;

    #getter for: Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->a:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;
    invoke-static {v1}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->access$000(Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;)Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->getUserId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileinno/common/service/facade/sns/model/MessageRPCRequest;->userId:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$8;->val$mobileNo:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobileinno/common/service/facade/sns/model/MessageRPCRequest;->mobileNo:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$8;->this$0:Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;

    #getter for: Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->f:Lcom/alipay/mobile/common/share/ShareContent;
    invoke-static {v1}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->access$200(Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;)Lcom/alipay/mobile/common/share/ShareContent;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$8;->this$0:Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;

    #getter for: Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->f:Lcom/alipay/mobile/common/share/ShareContent;
    invoke-static {v1}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->access$200(Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;)Lcom/alipay/mobile/common/share/ShareContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/share/ShareContent;->getExtData()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileinno/common/service/facade/sns/model/MessageRPCRequest;->extInfo:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$8;->this$0:Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;

    #getter for: Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->a:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;
    invoke-static {v1}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->access$000(Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;)Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->getSNSService()Lcom/alipay/mobileinno/common/service/facade/sns/SNSApiService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/mobileinno/common/service/facade/sns/SNSApiService;->createShortLinkByMessage(Lcom/alipay/mobileinno/common/service/facade/sns/model/MessageRPCRequest;)Lcom/alipay/mobileinno/common/service/facade/sns/model/ShortLinkOperationResult;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$8;->this$0:Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;

    #getter for: Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->k:Landroid/os/Handler;
    invoke-static {v1}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->access$300(Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$8$1;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$8$1;-><init>(Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$8;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/alipay/mobileinno/common/service/facade/sns/model/ShortLinkOperationResult;->success:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$8;->this$0:Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;

    #getter for: Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->k:Landroid/os/Handler;
    invoke-static {v1}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->access$300(Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$8$2;

    invoke-direct {v2, p0, v0}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$8$2;-><init>(Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$8;Lcom/alipay/mobileinno/common/service/facade/sns/model/ShortLinkOperationResult;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
