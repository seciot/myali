.class public Lcom/taobao/securityjni/impl/JImplSecurityCheck;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/taobao/securityjni/intelface/ISecurityCheck;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCheckSignature(Ljava/lang/String;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/taobao/securityjni/errorcode/SENotSupportedMethodError;

    invoke-direct {v0}, Lcom/taobao/securityjni/errorcode/SENotSupportedMethodError;-><init>()V

    throw v0
.end method
