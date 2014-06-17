.class final Lcom/alipay/mobile/security/authcenter/ui/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/authcenter/ui/KeyboardHiddenAwareLayout;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/authcenter/ui/KeyboardHiddenAwareLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/u;->a:Lcom/alipay/mobile/security/authcenter/ui/KeyboardHiddenAwareLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/u;->a:Lcom/alipay/mobile/security/authcenter/ui/KeyboardHiddenAwareLayout;

    #getter for: Lcom/alipay/mobile/security/authcenter/ui/KeyboardHiddenAwareLayout;->a:Lcom/alipay/mobile/security/authcenter/ui/w;
    invoke-static {v0}, Lcom/alipay/mobile/security/authcenter/ui/KeyboardHiddenAwareLayout;->access$000(Lcom/alipay/mobile/security/authcenter/ui/KeyboardHiddenAwareLayout;)Lcom/alipay/mobile/security/authcenter/ui/w;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/u;->a:Lcom/alipay/mobile/security/authcenter/ui/KeyboardHiddenAwareLayout;

    invoke-interface {v0}, Lcom/alipay/mobile/security/authcenter/ui/w;->b()V

    return-void
.end method
