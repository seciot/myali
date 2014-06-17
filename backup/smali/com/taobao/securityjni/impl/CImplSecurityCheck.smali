.class public Lcom/taobao/securityjni/impl/CImplSecurityCheck;
.super Lcom/taobao/securityjni/impl/SESecurity;

# interfaces
.implements Lcom/taobao/securityjni/intelface/ISecurityCheck;


# instance fields
.field private context:Landroid/content/ContextWrapper;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 1

    invoke-direct {p0}, Lcom/taobao/securityjni/impl/SESecurity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/securityjni/impl/CImplSecurityCheck;->context:Landroid/content/ContextWrapper;

    iput-object p1, p0, Lcom/taobao/securityjni/impl/CImplSecurityCheck;->context:Landroid/content/ContextWrapper;

    return-void
.end method

.method private InitGlobalData()V
    .locals 2

    new-instance v0, Lcom/taobao/securityjni/GlobalInit;

    invoke-direct {v0}, Lcom/taobao/securityjni/GlobalInit;-><init>()V

    iget-object v1, p0, Lcom/taobao/securityjni/impl/CImplSecurityCheck;->context:Landroid/content/ContextWrapper;

    invoke-virtual {v0, v1}, Lcom/taobao/securityjni/GlobalInit;->InitData(Landroid/content/ContextWrapper;)V

    return-void
.end method

.method private native getCheckSignatureNative(Ljava/lang/String;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;
.end method


# virtual methods
.method public getCheckSignature(Ljava/lang/String;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/taobao/securityjni/impl/CImplSecurityCheck;->SOInitCheck()V

    iget-object v0, p0, Lcom/taobao/securityjni/impl/CImplSecurityCheck;->context:Landroid/content/ContextWrapper;

    invoke-virtual {p0, v0}, Lcom/taobao/securityjni/impl/CImplSecurityCheck;->SOCredibleCheck(Landroid/content/ContextWrapper;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/taobao/securityjni/impl/CImplSecurityCheck;->getCheckSignatureNative(Ljava/lang/String;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "getCheckSignature"

    invoke-static {v1, v0}, Lcom/taobao/securityjni/usertrack/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
