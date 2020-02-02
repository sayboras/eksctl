package upgrade

import (
	"bytes"
	. "github.com/onsi/ginkgo"
	. "github.com/onsi/gomega"
	"github.com/spf13/cobra"
	"github.com/weaveworks/eksctl/pkg/ctl/cmdutils"
)

var _ = Describe("upgrade", func() {
	Describe("invalid-resource", func() {
		It("with no flag", func() {
			cmd := newMockDefaultUpgradeCmd("invalid-resource")
			out, err := cmd.execute()
			Expect(err).To(HaveOccurred())
			Expect(err.Error()).To(Equal("unknown command \"invalid-resource\" for \"upgrade\""))
			Expect(out).To(ContainSubstring("usage"))
		})
		It("with invalid-resource and some flag", func() {
			cmd := newMockDefaultUpgradeCmd("invalid-resource", "--invalid-flag", "foo")
			out, err := cmd.execute()
			Expect(err).To(HaveOccurred())
			Expect(err.Error()).To(Equal("unknown command \"invalid-resource\" for \"upgrade\""))
			Expect(out).To(ContainSubstring("usage"))
		})
		It("with invalid-resource and additional argument", func() {
			cmd := newMockDefaultUpgradeCmd("invalid-resource", "foo")
			out, err := cmd.execute()
			Expect(err).To(HaveOccurred())
			Expect(err.Error()).To(Equal("unknown command \"invalid-resource\" for \"upgrade\""))
			Expect(out).To(ContainSubstring("usage"))
		})
	})
})

// newMockDefaultUpgradeCmd instantiates mock UPGRADE command with all the resource commands
func newMockDefaultUpgradeCmd(args ...string) *mockVerbCmd {
	flagGrouping := cmdutils.NewGrouping()
	cmd := Command(flagGrouping)
	cmd.SetArgs(args)
	return &mockVerbCmd{
		parentCmd: cmd,
	}
}

// newMockEmptyUpgradeCmd instantiates mock UPGRADE command without any resource command
func newMockEmptyUpgradeCmd(args ...string) *mockVerbCmd {
	cmd := cmdutils.NewVerbCmd("upgrade", "Upgrade resource(s)", "")
	cmd.SetArgs(args)
	return &mockVerbCmd{
		parentCmd: cmd,
	}
}


type mockVerbCmd struct {
	parentCmd *cobra.Command
	cmd       *cmdutils.Cmd
}

func (c mockVerbCmd) execute() (string, error) {
	buf := new(bytes.Buffer)
	c.parentCmd.SetOut(buf)
	err := c.parentCmd.Execute()
	return buf.String(), err
}
