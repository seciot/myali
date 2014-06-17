.class public Lcom/taobao/securityjni/SecurityCheck;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/taobao/securityjni/intelface/IAttachImpl;
.implements Lcom/taobao/securityjni/intelface/ISecurityCheck;


# instance fields
.field private a:Lcom/taobao/securityjni/intelface/ISecurityCheck;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/securityjni/SecurityCheck;->a:Lcom/taobao/securityjni/intelface/ISecurityCheck;

    new-instance v0, Lcom/taobao/securityjni/impl/CImplSecurityCheck;

    invoke-direct {v0, p1}, Lcom/taobao/securityjni/impl/CImplSecurityCheck;-><init>(Landroid/content/ContextWrapper;)V

    iput-object v0, p0, Lcom/taobao/securityjni/SecurityCheck;->a:Lcom/taobao/securityjni/intelface/ISecurityCheck;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContextWrapper;Lcom/taobao/securityjni/intelface/ISecurityCheck;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/securityjni/SecurityCheck;->a:Lcom/taobao/securityjni/intelface/ISecurityCheck;

    if-nez p2, :cond_0

    new-instance v0, Lcom/taobao/securityjni/impl/CImplSecurityCheck;

    invoke-direct {v0, p1}, Lcom/taobao/securityjni/impl/CImplSecurityCheck;-><init>(Landroid/content/ContextWrapper;)V

    iput-object v0, p0, Lcom/taobao/securityjni/SecurityCheck;->a:Lcom/taobao/securityjni/intelface/ISecurityCheck;

    :goto_0
    return-void

    :cond_0
    iput-object p2, p0, Lcom/taobao/securityjni/SecurityCheck;->a:Lcom/taobao/securityjni/intelface/ISecurityCheck;

    goto :goto_0
.end method


# virtual methods
.method public AttachImplObject(Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/taobao/securityjni/intelface/ISecurityCheck;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/taobao/securityjni/intelface/ISecurityCheck;

    iput-object p1, p0, Lcom/taobao/securityjni/SecurityCheck;->a:Lcom/taobao/securityjni/intelface/ISecurityCheck;

    :cond_0
    return-void
.end method

.method public getCheckSignature(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/taobao/securityjni/tools/DataContext;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/taobao/securityjni/tools/DataContext;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/taobao/securityjni/SecurityCheck;->getCheckSignature(Ljava/lang/String;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCheckSignature(Ljava/lang/String;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/securityjni/SecurityCheck;->a:Lcom/taobao/securityjni/intelface/ISecurityCheck;

    invoke-interface {v0, p1, p2}, Lcom/taobao/securityjni/intelface/ISecurityCheck;->getCheckSignature(Ljava/lang/String;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
