.class public Lcom/alipay/android/mini/widget/SystemDefaultDialog;
.super Ljava/lang/Object;


# direct methods
.method private static a(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p4, :cond_1

    invoke-virtual {v0, p3, p4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_1
    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 1

    invoke-static {p0, p2, p3, p4, p5}, Lcom/alipay/android/mini/widget/SystemDefaultDialog;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 2

    invoke-static {p0, p2, p3, p4, p5}, Lcom/alipay/android/mini/widget/SystemDefaultDialog;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    new-instance v1, Lcom/alipay/android/mini/widget/i;

    invoke-direct {v1}, Lcom/alipay/android/mini/widget/i;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-object v0
.end method

.method public static a(Lcom/alipay/android/mini/window/MiniPayActivity;Ljava/lang/String;Ljava/util/List;)Landroid/app/Dialog;
    .locals 6

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/mini/window/UIFormDialog$DialogButton;

    if-nez v1, :cond_1

    const/4 v3, -0x1

    iget-object v4, v0, Lcom/alipay/android/mini/window/UIFormDialog$DialogButton;->a:Ljava/lang/String;

    new-instance v5, Lcom/alipay/android/mini/widget/j;

    invoke-direct {v5, p0, v0}, Lcom/alipay/android/mini/widget/j;-><init>(Lcom/alipay/android/mini/window/MiniPayActivity;Lcom/alipay/android/mini/window/UIFormDialog$DialogButton;)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    const/4 v3, -0x2

    iget-object v4, v0, Lcom/alipay/android/mini/window/UIFormDialog$DialogButton;->a:Ljava/lang/String;

    new-instance v5, Lcom/alipay/android/mini/widget/k;

    invoke-direct {v5, p0, v0}, Lcom/alipay/android/mini/widget/k;-><init>(Lcom/alipay/android/mini/window/MiniPayActivity;Lcom/alipay/android/mini/window/UIFormDialog$DialogButton;)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1

    :cond_2
    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    const/4 v3, -0x3

    iget-object v4, v0, Lcom/alipay/android/mini/window/UIFormDialog$DialogButton;->a:Ljava/lang/String;

    new-instance v5, Lcom/alipay/android/mini/widget/l;

    invoke-direct {v5, p0, v0}, Lcom/alipay/android/mini/widget/l;-><init>(Lcom/alipay/android/mini/window/MiniPayActivity;Lcom/alipay/android/mini/window/UIFormDialog$DialogButton;)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-object v2
.end method
