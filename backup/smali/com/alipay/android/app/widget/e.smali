.class final Lcom/alipay/android/app/widget/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/webkit/JsResult;

.field final synthetic b:Lcom/alipay/android/app/widget/a;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/widget/a;Landroid/webkit/JsResult;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/widget/e;->b:Lcom/alipay/android/app/widget/a;

    iput-object p2, p0, Lcom/alipay/android/app/widget/e;->a:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/widget/e;->a:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->confirm()V

    return-void
.end method
