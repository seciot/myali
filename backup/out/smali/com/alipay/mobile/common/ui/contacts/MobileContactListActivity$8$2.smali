.class Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$8$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$8;

.field final synthetic val$result:Lcom/alipay/mobileinno/common/service/facade/sns/model/ShortLinkOperationResult;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$8;Lcom/alipay/mobileinno/common/service/facade/sns/model/ShortLinkOperationResult;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$8$2;->this$1:Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$8;

    iput-object p2, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$8$2;->val$result:Lcom/alipay/mobileinno/common/service/facade/sns/model/ShortLinkOperationResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$8$2;->this$1:Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$8;

    iget-object v0, v0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$8;->this$0:Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$8$2;->val$result:Lcom/alipay/mobileinno/common/service/facade/sns/model/ShortLinkOperationResult;

    iget-object v1, v1, Lcom/alipay/mobileinno/common/service/facade/sns/model/ShortLinkOperationResult;->content:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$8$2;->this$1:Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$8;

    iget-object v2, v2, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$8;->val$mobileNo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->sendSMS(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
