.class public Lcom/taobao/securityjni/SecBody;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/taobao/securityjni/intelface/IAttachImpl;
.implements Lcom/taobao/securityjni/intelface/ISecurityBody;


# instance fields
.field private a:Lcom/taobao/securityjni/intelface/ISecurityBody;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/securityjni/SecBody;->a:Lcom/taobao/securityjni/intelface/ISecurityBody;

    new-instance v0, Lcom/taobao/securityjni/impl/CImplSecurityBody;

    invoke-direct {v0, p1}, Lcom/taobao/securityjni/impl/CImplSecurityBody;-><init>(Landroid/content/ContextWrapper;)V

    iput-object v0, p0, Lcom/taobao/securityjni/SecBody;->a:Lcom/taobao/securityjni/intelface/ISecurityBody;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContextWrapper;Lcom/taobao/securityjni/intelface/ISecurityBody;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/securityjni/SecBody;->a:Lcom/taobao/securityjni/intelface/ISecurityBody;

    if-nez p2, :cond_0

    new-instance v0, Lcom/taobao/securityjni/impl/CImplSecurityBody;

    invoke-direct {v0, p1}, Lcom/taobao/securityjni/impl/CImplSecurityBody;-><init>(Landroid/content/ContextWrapper;)V

    iput-object v0, p0, Lcom/taobao/securityjni/SecBody;->a:Lcom/taobao/securityjni/intelface/ISecurityBody;

    :goto_0
    return-void

    :cond_0
    iput-object p2, p0, Lcom/taobao/securityjni/SecBody;->a:Lcom/taobao/securityjni/intelface/ISecurityBody;

    goto :goto_0
.end method


# virtual methods
.method public AttachImplObject(Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/taobao/securityjni/intelface/ISecurityBody;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/taobao/securityjni/intelface/ISecurityBody;

    iput-object p1, p0, Lcom/taobao/securityjni/SecBody;->a:Lcom/taobao/securityjni/intelface/ISecurityBody;

    :cond_0
    return-void
.end method

.method public getSecBodyData(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Lcom/taobao/securityjni/tools/DataContext;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/taobao/securityjni/tools/DataContext;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1, v1}, Lcom/taobao/securityjni/SecBody;->getSecBodyData(Ljava/lang/String;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSecBodyData(Ljava/lang/String;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/ut/secbody/SecurityMatrix;->getMatrixEntry()Lcom/taobao/security/ProtocalEntry;

    move-result-object v1

    invoke-static {}, Lcom/ut/secbody/SecurityMatrix;->getMatrixData()[B

    move-result-object v2

    invoke-virtual {p0, v2, p1, v1, p2}, Lcom/taobao/securityjni/SecBody;->getSecBodyData([BLjava/lang/String;Lcom/taobao/security/ProtocalEntry;Lcom/taobao/securityjni/tools/DataContext;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSecBodyData([BLjava/lang/String;Lcom/taobao/security/ProtocalEntry;Lcom/taobao/securityjni/tools/DataContext;)[B
    .locals 1

    iget-object v0, p0, Lcom/taobao/securityjni/SecBody;->a:Lcom/taobao/securityjni/intelface/ISecurityBody;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/taobao/securityjni/intelface/ISecurityBody;->getSecBodyData([BLjava/lang/String;Lcom/taobao/security/ProtocalEntry;Lcom/taobao/securityjni/tools/DataContext;)[B

    move-result-object v0

    return-object v0
.end method
