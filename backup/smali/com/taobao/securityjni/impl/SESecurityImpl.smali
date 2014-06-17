.class public Lcom/taobao/securityjni/impl/SESecurityImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/taobao/securityjni/intelface/ISESecurity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public SOCredibleCheck(Landroid/content/ContextWrapper;)Z
    .locals 1

    invoke-static {p1}, Lcom/taobao/securityjni/tools/e;->a(Landroid/content/ContextWrapper;)Z

    move-result v0

    return v0
.end method

.method public SOInitCheck()V
    .locals 0

    invoke-static {}, Lcom/taobao/securityjni/a;->a()V

    return-void
.end method

.method public SOValidateSha256(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Lcom/taobao/securityjni/tools/e;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
