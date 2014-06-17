.class Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment$2;->a:Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment$2;->a:Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment;

    iget-object v0, v0, Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment;->f:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/securitycommon/data/SelectAccountInfo;

    iget-object v1, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment$2;->a:Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment;

    invoke-virtual {v1, p3, v0}, Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment;->a(ILcom/alipay/mobile/security/securitycommon/data/SelectAccountInfo;)V

    return-void
.end method
