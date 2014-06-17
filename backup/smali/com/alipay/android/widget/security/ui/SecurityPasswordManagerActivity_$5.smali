.class Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobilesecurity/core/model/mainpage/password/QuerySimplePwdStatusResp;

.field final synthetic b:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;Lcom/alipay/mobilesecurity/core/model/mainpage/password/QuerySimplePwdStatusResp;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_$5;->b:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;

    iput-object p2, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_$5;->a:Lcom/alipay/mobilesecurity/core/model/mainpage/password/QuerySimplePwdStatusResp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_$5;->b:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_$5;->a:Lcom/alipay/mobilesecurity/core/model/mainpage/password/QuerySimplePwdStatusResp;

    invoke-static {v0, v1}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;->a(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;Lcom/alipay/mobilesecurity/core/model/mainpage/password/QuerySimplePwdStatusResp;)V

    return-void
.end method
