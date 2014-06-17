.class Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;Z)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_$7;->this$0:Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;

    iput-boolean p2, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_$7;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_$7;->this$0:Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;

    iget-boolean v1, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_$7;->val$success:Z

    #calls: Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->pullRefreshFinished(Z)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;->access$301(Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;Z)V

    return-void
.end method
