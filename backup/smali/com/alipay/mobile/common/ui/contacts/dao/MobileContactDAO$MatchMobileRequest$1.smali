.class Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$MatchMobileRequest$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$MatchMobileRequest;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$MatchMobileRequest;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$MatchMobileRequest$1;->this$1:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$MatchMobileRequest;

    iput-object p2, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$MatchMobileRequest$1;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$MatchMobileRequest$1;->this$1:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$MatchMobileRequest;

    iget-object v0, v0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$MatchMobileRequest;->this$0:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;

    #getter for: Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->n:Landroid/content/Context;
    invoke-static {v0}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->access$1000(Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO$MatchMobileRequest$1;->val$message:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
