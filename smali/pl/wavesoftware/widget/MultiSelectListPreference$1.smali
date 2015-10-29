.class Lpl/wavesoftware/widget/MultiSelectListPreference$1;
.super Ljava/lang/Object;
.source "MultiSelectListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/wavesoftware/widget/MultiSelectListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/wavesoftware/widget/MultiSelectListPreference;


# direct methods
.method constructor <init>(Lpl/wavesoftware/widget/MultiSelectListPreference;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lpl/wavesoftware/widget/MultiSelectListPreference$1;->this$0:Lpl/wavesoftware/widget/MultiSelectListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .param p3, "val"    # Z

    .prologue
    .line 48
    iget-object v0, p0, Lpl/wavesoftware/widget/MultiSelectListPreference$1;->this$0:Lpl/wavesoftware/widget/MultiSelectListPreference;

    # getter for: Lpl/wavesoftware/widget/MultiSelectListPreference;->entryChecked:[Z
    invoke-static {v0}, Lpl/wavesoftware/widget/MultiSelectListPreference;->access$000(Lpl/wavesoftware/widget/MultiSelectListPreference;)[Z

    move-result-object v0

    aput-boolean p3, v0, p2

    .line 49
    return-void
.end method
