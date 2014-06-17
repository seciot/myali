.class final Lcom/alipay/android/mini/window/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:[Lcom/alipay/android/mini/event/ActionType;

.field final synthetic c:[Lcom/alipay/android/mini/event/ActionType;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcom/alipay/android/mini/window/MiniPayActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/window/MiniPayActivity;Ljava/lang/String;[Lcom/alipay/android/mini/event/ActionType;[Lcom/alipay/android/mini/event/ActionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/mini/window/l;->g:Lcom/alipay/android/mini/window/MiniPayActivity;

    iput-object p2, p0, Lcom/alipay/android/mini/window/l;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/android/mini/window/l;->b:[Lcom/alipay/android/mini/event/ActionType;

    iput-object p4, p0, Lcom/alipay/android/mini/window/l;->c:[Lcom/alipay/android/mini/event/ActionType;

    iput-object p5, p0, Lcom/alipay/android/mini/window/l;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/alipay/android/mini/window/l;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/alipay/android/mini/window/l;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/android/mini/window/l;->g:Lcom/alipay/android/mini/window/MiniPayActivity;

    invoke-static {v1}, Lcom/alipay/android/mini/window/MiniPayActivity;->a(Lcom/alipay/android/mini/window/MiniPayActivity;)V

    iget-object v1, p0, Lcom/alipay/android/mini/window/l;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/mini/window/l;->g:Lcom/alipay/android/mini/window/MiniPayActivity;

    sget v2, Lcom/alipay/android/app/R$string;->e:I

    invoke-virtual {v1, v2}, Lcom/alipay/android/mini/window/MiniPayActivity;->getString(I)Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/alipay/android/mini/window/l;->b:[Lcom/alipay/android/mini/event/ActionType;

    if-eqz v1, :cond_2

    new-instance v3, Lcom/alipay/android/mini/window/m;

    invoke-direct {v3, p0}, Lcom/alipay/android/mini/window/m;-><init>(Lcom/alipay/android/mini/window/l;)V

    :goto_0
    iget-object v1, p0, Lcom/alipay/android/mini/window/l;->c:[Lcom/alipay/android/mini/event/ActionType;

    if-eqz v1, :cond_1

    new-instance v5, Lcom/alipay/android/mini/window/n;

    invoke-direct {v5, p0}, Lcom/alipay/android/mini/window/n;-><init>(Lcom/alipay/android/mini/window/l;)V

    :goto_1
    iget-object v0, p0, Lcom/alipay/android/mini/window/l;->g:Lcom/alipay/android/mini/window/MiniPayActivity;

    iget-object v1, p0, Lcom/alipay/android/mini/window/l;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/mini/window/l;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/android/mini/window/l;->f:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/alipay/android/mini/widget/SystemDefaultDialog;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    return-void

    :cond_1
    move-object v5, v0

    goto :goto_1

    :cond_2
    move-object v3, v0

    goto :goto_0
.end method
