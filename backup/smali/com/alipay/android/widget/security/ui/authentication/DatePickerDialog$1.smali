.class Lcom/alipay/android/widget/security/ui/authentication/DatePickerDialog$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/authentication/DatePickerDialog;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/authentication/DatePickerDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/authentication/DatePickerDialog$1;->a:Lcom/alipay/android/widget/security/ui/authentication/DatePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/DatePickerDialog$1;->a:Lcom/alipay/android/widget/security/ui/authentication/DatePickerDialog;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/authentication/DatePickerDialog;->a(Lcom/alipay/android/widget/security/ui/authentication/DatePickerDialog;)Lcom/alipay/android/widget/security/ui/authentication/DatePickerDialog$OnDateSetListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/DatePickerDialog$1;->a:Lcom/alipay/android/widget/security/ui/authentication/DatePickerDialog;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/authentication/DatePickerDialog;->a(Lcom/alipay/android/widget/security/ui/authentication/DatePickerDialog;)Lcom/alipay/android/widget/security/ui/authentication/DatePickerDialog$OnDateSetListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/widget/security/ui/authentication/DatePickerDialog$OnDateSetListener;->a()V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/DatePickerDialog$1;->a:Lcom/alipay/android/widget/security/ui/authentication/DatePickerDialog;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/ui/authentication/DatePickerDialog;->cancel()V

    :cond_0
    return-void
.end method
