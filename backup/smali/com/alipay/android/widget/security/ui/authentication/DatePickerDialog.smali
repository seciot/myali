.class public Lcom/alipay/android/widget/security/ui/authentication/DatePickerDialog;
.super Landroid/app/AlertDialog;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/DatePicker$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/widget/security/ui/authentication/DatePickerDialog$OnDateSetListener;
    }
.end annotation


# instance fields
.field private final a:Landroid/widget/DatePicker;

.field private final b:Lcom/alipay/android/widget/security/ui/authentication/DatePickerDialog$OnDateSetListener;

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alipay/android/widget/security/ui/authentication/DatePickerDialog$OnDateSetListener;III)V
    .locals 6

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/alipay/android/widget/security/ui/authentication/DatePickerDialog;->b:Lcom/alipay/android/widget/security/ui/authentication/DatePickerDialog$OnDateSetListener;

    iput p3, p0, Lcom/alipay/android/widget/security/ui/authentication/DatePickerDialog;->c:I

    iput p4, p0, Lcom/alipay/android/widget/security/ui/authentication/DatePickerDialog;->d:I

    iput p5, p0, Lcom/alipay/android/widget/security/ui/authentication/DatePickerDialog;->e:I

    const-string/jumbo v0, "\u9009\u62e9\u6709\u6548\u671f"

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/authentication/DatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$string;->aO:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p0}, Lcom/alipay/android/widget/security/ui/authentication/DatePickerDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$string;->aI:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/alipay/android/widget/security/ui/authentication/DatePickerDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$layout;->s:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alipay/android/widget/security/ui/authentication/DatePickerDialog;->setView(Landroid/view/View;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->aO:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/DatePicker;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/DatePickerDialog;->a:Landroid/widget/DatePicker;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->aX:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    sget v2, Lcom/alipay/mobile/clientsecurity/R$id;->aP:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/commonui/widget/APImageView;

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/authentication/DatePickerDialog;->a:Landroid/widget/DatePicker;

    iget v3, p0, Lcom/alipay/android/widget/security/ui/authentication/DatePickerDialog;->c:I

    iget v4, p0, Lcom/alipay/android/widget/security/ui/authentication/DatePickerDialog;->d:I

    iget v5, p0, Lcom/alipay/android/widget/security/ui/authentication/DatePickerDialog;->e:I

    invoke-virtual {v2, v3, v4, v5, p0}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    new-instance v2, Lcom/alipay/android/widget/security/ui/authentication/DatePickerDialog$1;

    invoke-direct {v2, p0}, Lcom/alipay/android/widget/security/ui/authentication/DatePickerDialog$1;-><init>(Lcom/alipay/android/widget/security/ui/authentication/DatePickerDialog;)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v0, v2, :cond_0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/authentication/DatePickerDialog;)Lcom/alipay/android/widget/security/ui/authentication/DatePickerDialog$OnDateSetListener;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/DatePickerDialog;->b:Lcom/alipay/android/widget/security/ui/authentication/DatePickerDialog$OnDateSetListener;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/DatePickerDialog;->b:Lcom/alipay/android/widget/security/ui/authentication/DatePickerDialog$OnDateSetListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/DatePickerDialog;->a:Landroid/widget/DatePicker;

    invoke-virtual {v0}, Landroid/widget/DatePicker;->clearFocus()V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/DatePickerDialog;->b:Lcom/alipay/android/widget/security/ui/authentication/DatePickerDialog$OnDateSetListener;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/DatePickerDialog;->a:Landroid/widget/DatePicker;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/DatePickerDialog;->a:Landroid/widget/DatePicker;

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getYear()I

    move-result v1

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/authentication/DatePickerDialog;->a:Landroid/widget/DatePicker;

    invoke-virtual {v2}, Landroid/widget/DatePicker;->getMonth()I

    move-result v2

    iget-object v3, p0, Lcom/alipay/android/widget/security/ui/authentication/DatePickerDialog;->a:Landroid/widget/DatePicker;

    invoke-virtual {v3}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/android/widget/security/ui/authentication/DatePickerDialog$OnDateSetListener;->a(III)V

    :cond_0
    return-void
.end method

.method public onDateChanged(Landroid/widget/DatePicker;III)V
    .locals 0

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "year"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "month"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "day"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/alipay/android/widget/security/ui/authentication/DatePickerDialog;->a:Landroid/widget/DatePicker;

    invoke-virtual {v3, v0, v1, v2, p0}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "year"

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/authentication/DatePickerDialog;->a:Landroid/widget/DatePicker;

    invoke-virtual {v2}, Landroid/widget/DatePicker;->getYear()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "month"

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/authentication/DatePickerDialog;->a:Landroid/widget/DatePicker;

    invoke-virtual {v2}, Landroid/widget/DatePicker;->getMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "day"

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/authentication/DatePickerDialog;->a:Landroid/widget/DatePicker;

    invoke-virtual {v2}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public show()V
    .locals 0

    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
