.class public Lcom/taobao/securityjni/impl/CImplSecurityBody;
.super Lcom/taobao/securityjni/impl/SESecurity;

# interfaces
.implements Lcom/taobao/securityjni/intelface/ISecurityBody;


# instance fields
.field private context:Landroid/content/ContextWrapper;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 1

    invoke-direct {p0}, Lcom/taobao/securityjni/impl/SESecurity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/securityjni/impl/CImplSecurityBody;->context:Landroid/content/ContextWrapper;

    iput-object p1, p0, Lcom/taobao/securityjni/impl/CImplSecurityBody;->context:Landroid/content/ContextWrapper;

    return-void
.end method

.method private InitGlobalData()V
    .locals 2

    new-instance v0, Lcom/taobao/securityjni/GlobalInit;

    invoke-direct {v0}, Lcom/taobao/securityjni/GlobalInit;-><init>()V

    iget-object v1, p0, Lcom/taobao/securityjni/impl/CImplSecurityBody;->context:Landroid/content/ContextWrapper;

    invoke-virtual {v0, v1}, Lcom/taobao/securityjni/GlobalInit;->InitData(Landroid/content/ContextWrapper;)V

    return-void
.end method

.method private native getSecBodyDataNative([BLjava/lang/String;Lcom/taobao/security/ProtocalEntry;Lcom/taobao/securityjni/tools/DataContext;Landroid/content/Context;)[B
.end method


# virtual methods
.method public getSecBodyData([BLjava/lang/String;Lcom/taobao/security/ProtocalEntry;Lcom/taobao/securityjni/tools/DataContext;)[B
    .locals 7

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/taobao/securityjni/impl/CImplSecurityBody;->context:Landroid/content/ContextWrapper;

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v6

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/taobao/securityjni/impl/CImplSecurityBody;->SOInitCheck()V

    iget-object v0, p0, Lcom/taobao/securityjni/impl/CImplSecurityBody;->context:Landroid/content/ContextWrapper;

    invoke-virtual {p0, v0}, Lcom/taobao/securityjni/impl/CImplSecurityBody;->SOCredibleCheck(Landroid/content/ContextWrapper;)Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v5, p0, Lcom/taobao/securityjni/impl/CImplSecurityBody;->context:Landroid/content/ContextWrapper;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/taobao/securityjni/impl/CImplSecurityBody;->getSecBodyDataNative([BLjava/lang/String;Lcom/taobao/security/ProtocalEntry;Lcom/taobao/securityjni/tools/DataContext;Landroid/content/Context;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "getSecBodyData"

    invoke-static {v1, v0}, Lcom/taobao/securityjni/usertrack/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    move-object v0, v6

    goto :goto_0
.end method
