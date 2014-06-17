.class Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment$1;->a:Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment$1;->a:Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment$1;->a:Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment;

    iget-object v2, v2, Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment;->g:Lcom/alipay/mobile/security/securitycommon/data/SelectAccountInfo;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment;->a(ILcom/alipay/mobile/security/securitycommon/data/SelectAccountInfo;)V

    return-void
.end method
