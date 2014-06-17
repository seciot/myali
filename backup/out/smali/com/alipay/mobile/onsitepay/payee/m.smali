.class final Lcom/alipay/mobile/onsitepay/payee/m;
.super Ljava/lang/Object;
.source "FacePayeeActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

.field final synthetic c:Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;Ljava/lang/String;Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payee/m;->c:Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;

    iput-object p2, p0, Lcom/alipay/mobile/onsitepay/payee/m;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/onsitepay/payee/m;->b:Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/m;->c:Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payee/m;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/payee/m;->b:Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;->a(Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;Ljava/lang/String;Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;)V

    .line 115
    return-void
.end method
