.class Lcom/androidquery/callback/AbstractAjaxCallback$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/Object;

.field private final synthetic b:Z

.field final synthetic this$0:Lcom/androidquery/callback/AbstractAjaxCallback;


# direct methods
.method constructor <init>(Lcom/androidquery/callback/AbstractAjaxCallback;Ljava/lang/Object;Z)V
    .locals 0

    iput-object p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback$1;->this$0:Lcom/androidquery/callback/AbstractAjaxCallback;

    iput-object p2, p0, Lcom/androidquery/callback/AbstractAjaxCallback$1;->a:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/androidquery/callback/AbstractAjaxCallback$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback$1;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback$1;->this$0:Lcom/androidquery/callback/AbstractAjaxCallback;

    #getter for: Lcom/androidquery/callback/AbstractAjaxCallback;->k:Ljava/lang/String;
    invoke-static {v1}, Lcom/androidquery/callback/AbstractAjaxCallback;->access$0(Lcom/androidquery/callback/AbstractAjaxCallback;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback$1;->b:Z

    invoke-static {v0, v1, v2}, Lcom/androidquery/util/Common;->showProgress(Ljava/lang/Object;Ljava/lang/String;Z)V

    return-void
.end method
